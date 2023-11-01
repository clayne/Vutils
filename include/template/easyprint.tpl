/**
 * @file   easyprint.tpl
 * @author Vic P.
 * @brief  Template for Easy Print
 */

 /**
  * Easy Print
  */

#pragma once

// C++14 (MSVC 2015+ or MinGW 5.1+)
#if (defined(_MSC_VER) && _MSC_VER >= 1900) || (defined(__MINGW32__) && __cplusplus >= 201402L)

#define EASY_PRINT_WINDOWS
#include "3rdparty/EP/include/easyprint.hpp"

#include <string>

namespace std { namespace ep {

template <typename T>
std::string stringify_container_A(const T& container)
{
  return easyprint::stringify_A(container);
}

template <typename T>
std::wstring stringify_container_W(const T& container)
{
  return easyprint::stringify_W(container);
}

}} // std::ep

#ifdef _UNICODE
#define stringify_container stringify_container_W
#else // _UNICODE
#define stringify_container stringify_container_A
#endif // _UNICODE

#endif // C++14 (MSVC 2015+ or MinGW 5.1+)