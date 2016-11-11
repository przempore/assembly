#include <stdio.h>

int main()
{
  int a, b, c;
  scanf("%i %i", &a, &b);
  c = a - b;
  if (c == 0) putchar('=');
  else if (c < 0) putchar('<');
  else if (c > 0) putchar('>');

  return 0;
}
