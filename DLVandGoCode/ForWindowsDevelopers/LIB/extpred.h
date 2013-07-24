//////////////////////////////////////////////////////////////////////////////
//extpred.h

#ifndef EXTPRED_H
#define EXPRED_H

#include <assert.h>
#include <iostream>

#include <cstring>
#include <vector>

#define HAVE_GCC_VERSION(MAJOR, MINOR) \
  (__GNUC__ > (MAJOR) || (__GNUC__ == (MAJOR) && __GNUC_MINOR__ >= (MINOR)))

// The character that separates multiple subdirectories in a fully
// qualified filename.
#ifdef __WIN32__
    #define DIR_SEPARATOR '\\'
#else
    #define DIR_SEPARATOR '/'
#endif

namespace std { }

using namespace std;

//////////////////////////////////////////////////////////////////////////////
class CONSTANT
//
    {
public:
    enum TYPE { Integer, Symbol, String, NullConst };

private:
    TYPE type;

    union
        {
        char *string;
	int  integer;
        } data;

public:

    TYPE getType() const;

    bool isInt() const;  

    bool isString() const; 
    
    bool isSymbol() const;

    const char* toString() const; 

    const char* toQuotedString() const;
 
    const char* toSymbol() const;
 
    int toInt() const;

    bool isNull() const; 
    
    CONSTANT();
    
    CONSTANT( const CONSTANT & );

    CONSTANT &operator= ( const CONSTANT & );   
 
    CONSTANT( const char *, bool = false); 

    CONSTANT( const int & );

    ~CONSTANT(); 

    int operator!= ( const CONSTANT & ) const;  
    
    bool operator== ( const CONSTANT & ) const; 

    bool operator< ( const CONSTANT & ) const;
  
    bool operator<= ( const CONSTANT & ) const;
  
    bool operator> ( const CONSTANT & ) const;
 
    bool operator>= ( const CONSTANT & ) const; 

    };

////////////////////////////////////////////////////////////////////////////////
//  Support routines for Functions and others compound terms
typedef vector< string > STRINGVECTOR;

// Return true if the char is a complex term starting symbol
bool isStartSymbol( char );
// Return true if the char is a complex term ending symbol
bool isEndSymbol( char );
// Used to parse the string
int getStartSymbolIndex( char );
// Parses the string to identify the comma separated elements of the top most container. 
// The identified elements are then pushed back in the vector . 
void parseStringTerm( string, STRINGVECTOR & );
// Scan the string to identify the comma separated elements of the top most container.
// The identified elements are counted. The return value of the function is the number
// of elements that che complex term contain. A complex term is a Set, or a Multiset or
// a List.
unsigned nElementsOf( string );
// Convert a CONSTANT element to a string
string fromConstantToString( CONSTANT );

/////////////////////////////////////////////////////////////////////////////
#define BUILTIN( name, pattern ) bool name##_## pattern ( CONSTANT * argv, unsigned argc )

#endif
