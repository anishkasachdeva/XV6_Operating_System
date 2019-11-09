
_pbs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"
#include "fs.h"

int main(int argc , char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
  14:	8b 19                	mov    (%ecx),%ebx
  16:	8b 71 04             	mov    0x4(%ecx),%esi
    int k , n , id;
    double  z , d;

    if(argc < 2)
  19:	83 fb 01             	cmp    $0x1,%ebx
  1c:	0f 8e 9e 00 00 00    	jle    c0 <main+0xc0>
    {
        n = 1;
    }
    else
    {
        n = atoi(argv[1]);
  22:	83 ec 0c             	sub    $0xc,%esp
  25:	ff 76 04             	pushl  0x4(%esi)
  28:	e8 c3 02 00 00       	call   2f0 <atoi>
    }
    if(argc < 3)
  2d:	83 c4 10             	add    $0x10,%esp
  30:	83 fb 02             	cmp    $0x2,%ebx
    {
        n = 1;
    }
    else
    {
        n = atoi(argv[1]);
  33:	89 c7                	mov    %eax,%edi
    }
    if(argc < 3)
  35:	74 7e                	je     b5 <main+0xb5>
    {
        d = 0.01;
    }
    else
    {
        d = atoi(argv[2]);
  37:	83 ec 0c             	sub    $0xc,%esp
  3a:	ff 76 08             	pushl  0x8(%esi)
  3d:	e8 ae 02 00 00       	call   2f0 <atoi>
  42:	89 45 d0             	mov    %eax,-0x30(%ebp)
  45:	83 c4 10             	add    $0x10,%esp
  48:	db 45 d0             	fildl  -0x30(%ebp)
  4b:	dd 5d d0             	fstpl  -0x30(%ebp)
    }
    volatile double x = 0;
  4e:	d9 ee                	fldz   
    id = 0;
    for ( k = 0; k < n; k++)
  50:	85 ff                	test   %edi,%edi
    }
    else
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
  52:	dd 5d e0             	fstpl  -0x20(%ebp)
    id = 0;
    for ( k = 0; k < n; k++)
  55:	7e 59                	jle    b0 <main+0xb0>
    {
        n = atoi(argv[1]);
    }
    if(argc < 3)
    {
        d = 0.01;
  57:	31 db                	xor    %ebx,%ebx
  59:	eb 29                	jmp    84 <main+0x84>
  5b:	90                   	nop
  5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        id = fork();
        if( id < 0)
        {
            printf(1, "%d failed in fork\n",getpid());
        }
        else if(id > 0)
  60:	74 73                	je     d5 <main+0xd5>
        {
            printf(1, "Parent %d creating child %d\n", getpid(),id);
  62:	e8 7b 03 00 00       	call   3e2 <getpid>
  67:	56                   	push   %esi
  68:	50                   	push   %eax
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
    id = 0;
    for ( k = 0; k < n; k++)
  69:	83 c3 01             	add    $0x1,%ebx
        {
            printf(1, "%d failed in fork\n",getpid());
        }
        else if(id > 0)
        {
            printf(1, "Parent %d creating child %d\n", getpid(),id);
  6c:	68 f3 07 00 00       	push   $0x7f3
  71:	6a 01                	push   $0x1
  73:	e8 48 04 00 00       	call   4c0 <printf>
            wait();
  78:	e8 ed 02 00 00       	call   36a <wait>
  7d:	83 c4 10             	add    $0x10,%esp
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
    id = 0;
    for ( k = 0; k < n; k++)
  80:	39 fb                	cmp    %edi,%ebx
  82:	7d 2c                	jge    b0 <main+0xb0>
    {
        id = fork();
  84:	e8 d1 02 00 00       	call   35a <fork>
        if( id < 0)
  89:	85 c0                	test   %eax,%eax
    }
    volatile double x = 0;
    id = 0;
    for ( k = 0; k < n; k++)
    {
        id = fork();
  8b:	89 c6                	mov    %eax,%esi
        if( id < 0)
  8d:	79 d1                	jns    60 <main+0x60>
        {
            printf(1, "%d failed in fork\n",getpid());
  8f:	e8 4e 03 00 00       	call   3e2 <getpid>
  94:	83 ec 04             	sub    $0x4,%esp
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
    id = 0;
    for ( k = 0; k < n; k++)
  97:	83 c3 01             	add    $0x1,%ebx
    {
        id = fork();
        if( id < 0)
        {
            printf(1, "%d failed in fork\n",getpid());
  9a:	50                   	push   %eax
  9b:	68 e0 07 00 00       	push   $0x7e0
  a0:	6a 01                	push   $0x1
  a2:	e8 19 04 00 00       	call   4c0 <printf>
  a7:	83 c4 10             	add    $0x10,%esp
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
    id = 0;
    for ( k = 0; k < n; k++)
  aa:	39 fb                	cmp    %edi,%ebx
  ac:	7c d6                	jl     84 <main+0x84>
  ae:	66 90                	xchg   %ax,%ax
                //break;
            }
        break;
        }
    }
    exit();
  b0:	e8 ad 02 00 00       	call   362 <exit>
    {
        n = atoi(argv[1]);
    }
    if(argc < 3)
    {
        d = 0.01;
  b5:	dd 05 28 08 00 00    	fldl   0x828
  bb:	dd 5d d0             	fstpl  -0x30(%ebp)
  be:	eb 8e                	jmp    4e <main+0x4e>
    }
    else
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
  c0:	d9 ee                	fldz   
    int k , n , id;
    double  z , d;

    if(argc < 2)
    {
        n = 1;
  c2:	bf 01 00 00 00       	mov    $0x1,%edi
    }
    else
    {
        d = atoi(argv[2]);
    }
    volatile double x = 0;
  c7:	dd 5d e0             	fstpl  -0x20(%ebp)
    {
        n = atoi(argv[1]);
    }
    if(argc < 3)
    {
        d = 0.01;
  ca:	dd 05 28 08 00 00    	fldl   0x828
  d0:	dd 5d d0             	fstpl  -0x30(%ebp)
  d3:	eb 82                	jmp    57 <main+0x57>
            printf(1, "Parent %d creating child %d\n", getpid(),id);
            wait();
        }
        else
        {
            printf(1, "Child %d created\n",getpid());
  d5:	e8 08 03 00 00       	call   3e2 <getpid>
  da:	52                   	push   %edx
  db:	50                   	push   %eax
  dc:	68 10 08 00 00       	push   $0x810
  e1:	6a 01                	push   $0x1
  e3:	e8 d8 03 00 00       	call   4c0 <printf>
            for(z = 0; z < 8000000.0 ; z += d)
  e8:	d9 ee                	fldz   
            printf(1, "Parent %d creating child %d\n", getpid(),id);
            wait();
        }
        else
        {
            printf(1, "Child %d created\n",getpid());
  ea:	83 c4 10             	add    $0x10,%esp
            for(z = 0; z < 8000000.0 ; z += d)
            {
                   x = x + 3.14 * 89.64; // useless calcs
  ed:	dd 05 30 08 00 00    	fldl   0x830
  f3:	eb 05                	jmp    fa <main+0xfa>
  f5:	8d 76 00             	lea    0x0(%esi),%esi
  f8:	d9 c9                	fxch   %st(1)
  fa:	dd 45 e0             	fldl   -0x20(%ebp)
  fd:	d8 c1                	fadd   %st(1),%st
  ff:	dd 5d e0             	fstpl  -0x20(%ebp)
 102:	d9 c9                	fxch   %st(1)
            wait();
        }
        else
        {
            printf(1, "Child %d created\n",getpid());
            for(z = 0; z < 8000000.0 ; z += d)
 104:	dc 45 d0             	faddl  -0x30(%ebp)
 107:	d9 05 38 08 00 00    	flds   0x838
 10d:	df e9                	fucomip %st(1),%st
 10f:	77 e7                	ja     f8 <main+0xf8>
 111:	dd d8                	fstp   %st(0)
 113:	dd d8                	fstp   %st(0)
 115:	eb 99                	jmp    b0 <main+0xb0>
 117:	66 90                	xchg   %ax,%ax
 119:	66 90                	xchg   %ax,%ax
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	53                   	push   %ebx
 124:	8b 45 08             	mov    0x8(%ebp),%eax
 127:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 12a:	89 c2                	mov    %eax,%edx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 130:	83 c1 01             	add    $0x1,%ecx
 133:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 137:	83 c2 01             	add    $0x1,%edx
 13a:	84 db                	test   %bl,%bl
 13c:	88 5a ff             	mov    %bl,-0x1(%edx)
 13f:	75 ef                	jne    130 <strcpy+0x10>
    ;
  return os;
}
 141:	5b                   	pop    %ebx
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 14a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	56                   	push   %esi
 154:	53                   	push   %ebx
 155:	8b 55 08             	mov    0x8(%ebp),%edx
 158:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 15b:	0f b6 02             	movzbl (%edx),%eax
 15e:	0f b6 19             	movzbl (%ecx),%ebx
 161:	84 c0                	test   %al,%al
 163:	75 1e                	jne    183 <strcmp+0x33>
 165:	eb 29                	jmp    190 <strcmp+0x40>
 167:	89 f6                	mov    %esi,%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 170:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 173:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 176:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 179:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 17d:	84 c0                	test   %al,%al
 17f:	74 0f                	je     190 <strcmp+0x40>
 181:	89 f1                	mov    %esi,%ecx
 183:	38 d8                	cmp    %bl,%al
 185:	74 e9                	je     170 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 187:	29 d8                	sub    %ebx,%eax
}
 189:	5b                   	pop    %ebx
 18a:	5e                   	pop    %esi
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret    
 18d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 190:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 192:	29 d8                	sub    %ebx,%eax
}
 194:	5b                   	pop    %ebx
 195:	5e                   	pop    %esi
 196:	5d                   	pop    %ebp
 197:	c3                   	ret    
 198:	90                   	nop
 199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001a0 <strlen>:

uint
strlen(const char *s)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1a6:	80 39 00             	cmpb   $0x0,(%ecx)
 1a9:	74 12                	je     1bd <strlen+0x1d>
 1ab:	31 d2                	xor    %edx,%edx
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c2 01             	add    $0x1,%edx
 1b3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1b7:	89 d0                	mov    %edx,%eax
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
    ;
  return n;
}
 1bb:	5d                   	pop    %ebp
 1bc:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 1bd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 1bf:	5d                   	pop    %ebp
 1c0:	c3                   	ret    
 1c1:	eb 0d                	jmp    1d0 <memset>
 1c3:	90                   	nop
 1c4:	90                   	nop
 1c5:	90                   	nop
 1c6:	90                   	nop
 1c7:	90                   	nop
 1c8:	90                   	nop
 1c9:	90                   	nop
 1ca:	90                   	nop
 1cb:	90                   	nop
 1cc:	90                   	nop
 1cd:	90                   	nop
 1ce:	90                   	nop
 1cf:	90                   	nop

000001d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1da:	8b 45 0c             	mov    0xc(%ebp),%eax
 1dd:	89 d7                	mov    %edx,%edi
 1df:	fc                   	cld    
 1e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1e2:	89 d0                	mov    %edx,%eax
 1e4:	5f                   	pop    %edi
 1e5:	5d                   	pop    %ebp
 1e6:	c3                   	ret    
 1e7:	89 f6                	mov    %esi,%esi
 1e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001f0 <strchr>:

char*
strchr(const char *s, char c)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 45 08             	mov    0x8(%ebp),%eax
 1f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	74 1d                	je     21e <strchr+0x2e>
    if(*s == c)
 201:	38 d3                	cmp    %dl,%bl
 203:	89 d9                	mov    %ebx,%ecx
 205:	75 0d                	jne    214 <strchr+0x24>
 207:	eb 17                	jmp    220 <strchr+0x30>
 209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 210:	38 ca                	cmp    %cl,%dl
 212:	74 0c                	je     220 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 214:	83 c0 01             	add    $0x1,%eax
 217:	0f b6 10             	movzbl (%eax),%edx
 21a:	84 d2                	test   %dl,%dl
 21c:	75 f2                	jne    210 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 21e:	31 c0                	xor    %eax,%eax
}
 220:	5b                   	pop    %ebx
 221:	5d                   	pop    %ebp
 222:	c3                   	ret    
 223:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
 235:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 236:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 238:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 23b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 23e:	eb 29                	jmp    269 <gets+0x39>
    cc = read(0, &c, 1);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	57                   	push   %edi
 246:	6a 00                	push   $0x0
 248:	e8 2d 01 00 00       	call   37a <read>
    if(cc < 1)
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
      break;
    buf[i++] = c;
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 25d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 25f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 263:	74 1b                	je     280 <gets+0x50>
 265:	3c 0d                	cmp    $0xd,%al
 267:	74 17                	je     280 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 269:	8d 5e 01             	lea    0x1(%esi),%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 271:	8b 45 08             	mov    0x8(%ebp),%eax
 274:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 278:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27b:	5b                   	pop    %ebx
 27c:	5e                   	pop    %esi
 27d:	5f                   	pop    %edi
 27e:	5d                   	pop    %ebp
 27f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 280:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 283:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 285:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 289:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28c:	5b                   	pop    %ebx
 28d:	5e                   	pop    %esi
 28e:	5f                   	pop    %edi
 28f:	5d                   	pop    %ebp
 290:	c3                   	ret    
 291:	eb 0d                	jmp    2a0 <stat>
 293:	90                   	nop
 294:	90                   	nop
 295:	90                   	nop
 296:	90                   	nop
 297:	90                   	nop
 298:	90                   	nop
 299:	90                   	nop
 29a:	90                   	nop
 29b:	90                   	nop
 29c:	90                   	nop
 29d:	90                   	nop
 29e:	90                   	nop
 29f:	90                   	nop

000002a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a5:	83 ec 08             	sub    $0x8,%esp
 2a8:	6a 00                	push   $0x0
 2aa:	ff 75 08             	pushl  0x8(%ebp)
 2ad:	e8 f0 00 00 00       	call   3a2 <open>
  if(fd < 0)
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 27                	js     2e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2b9:	83 ec 08             	sub    $0x8,%esp
 2bc:	ff 75 0c             	pushl  0xc(%ebp)
 2bf:	89 c3                	mov    %eax,%ebx
 2c1:	50                   	push   %eax
 2c2:	e8 f3 00 00 00       	call   3ba <fstat>
 2c7:	89 c6                	mov    %eax,%esi
  close(fd);
 2c9:	89 1c 24             	mov    %ebx,(%esp)
 2cc:	e8 b9 00 00 00       	call   38a <close>
  return r;
 2d1:	83 c4 10             	add    $0x10,%esp
 2d4:	89 f0                	mov    %esi,%eax
}
 2d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 2e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2e5:	eb ef                	jmp    2d6 <stat+0x36>
 2e7:	89 f6                	mov    %esi,%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002f0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2f7:	0f be 11             	movsbl (%ecx),%edx
 2fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 2fd:	3c 09                	cmp    $0x9,%al
 2ff:	b8 00 00 00 00       	mov    $0x0,%eax
 304:	77 1f                	ja     325 <atoi+0x35>
 306:	8d 76 00             	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 310:	8d 04 80             	lea    (%eax,%eax,4),%eax
 313:	83 c1 01             	add    $0x1,%ecx
 316:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 31a:	0f be 11             	movsbl (%ecx),%edx
 31d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 320:	80 fb 09             	cmp    $0x9,%bl
 323:	76 eb                	jbe    310 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 325:	5b                   	pop    %ebx
 326:	5d                   	pop    %ebp
 327:	c3                   	ret    
 328:	90                   	nop
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
 335:	8b 5d 10             	mov    0x10(%ebp),%ebx
 338:	8b 45 08             	mov    0x8(%ebp),%eax
 33b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 33e:	85 db                	test   %ebx,%ebx
 340:	7e 14                	jle    356 <memmove+0x26>
 342:	31 d2                	xor    %edx,%edx
 344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 34c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 34f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 352:	39 da                	cmp    %ebx,%edx
 354:	75 f2                	jne    348 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    

0000035a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 35a:	b8 01 00 00 00       	mov    $0x1,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <exit>:
SYSCALL(exit)
 362:	b8 02 00 00 00       	mov    $0x2,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <wait>:
SYSCALL(wait)
 36a:	b8 03 00 00 00       	mov    $0x3,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <pipe>:
SYSCALL(pipe)
 372:	b8 04 00 00 00       	mov    $0x4,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <read>:
SYSCALL(read)
 37a:	b8 05 00 00 00       	mov    $0x5,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <write>:
SYSCALL(write)
 382:	b8 10 00 00 00       	mov    $0x10,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <close>:
SYSCALL(close)
 38a:	b8 15 00 00 00       	mov    $0x15,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <kill>:
SYSCALL(kill)
 392:	b8 06 00 00 00       	mov    $0x6,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <exec>:
SYSCALL(exec)
 39a:	b8 07 00 00 00       	mov    $0x7,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <open>:
SYSCALL(open)
 3a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <mknod>:
SYSCALL(mknod)
 3aa:	b8 11 00 00 00       	mov    $0x11,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <unlink>:
SYSCALL(unlink)
 3b2:	b8 12 00 00 00       	mov    $0x12,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <fstat>:
SYSCALL(fstat)
 3ba:	b8 08 00 00 00       	mov    $0x8,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <link>:
SYSCALL(link)
 3c2:	b8 13 00 00 00       	mov    $0x13,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <mkdir>:
SYSCALL(mkdir)
 3ca:	b8 14 00 00 00       	mov    $0x14,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <chdir>:
SYSCALL(chdir)
 3d2:	b8 09 00 00 00       	mov    $0x9,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <dup>:
SYSCALL(dup)
 3da:	b8 0a 00 00 00       	mov    $0xa,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <getpid>:
SYSCALL(getpid)
 3e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <sbrk>:
SYSCALL(sbrk)
 3ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <sleep>:
SYSCALL(sleep)
 3f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <waitx>:
SYSCALL(waitx)
 3fa:	b8 16 00 00 00       	mov    $0x16,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <getpinfo>:
SYSCALL(getpinfo)
 402:	b8 17 00 00 00       	mov    $0x17,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <cps>:
SYSCALL(cps)
 40a:	b8 18 00 00 00       	mov    $0x18,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <set_priority>:
 412:	b8 19 00 00 00       	mov    $0x19,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    
 41a:	66 90                	xchg   %ax,%ax
 41c:	66 90                	xchg   %ax,%ax
 41e:	66 90                	xchg   %ax,%ax

00000420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	53                   	push   %ebx
 426:	89 c6                	mov    %eax,%esi
 428:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 42b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 42e:	85 db                	test   %ebx,%ebx
 430:	74 7e                	je     4b0 <printint+0x90>
 432:	89 d0                	mov    %edx,%eax
 434:	c1 e8 1f             	shr    $0x1f,%eax
 437:	84 c0                	test   %al,%al
 439:	74 75                	je     4b0 <printint+0x90>
    neg = 1;
    x = -xx;
 43b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 43d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 444:	f7 d8                	neg    %eax
 446:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 449:	31 ff                	xor    %edi,%edi
 44b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 44e:	89 ce                	mov    %ecx,%esi
 450:	eb 08                	jmp    45a <printint+0x3a>
 452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 458:	89 cf                	mov    %ecx,%edi
 45a:	31 d2                	xor    %edx,%edx
 45c:	8d 4f 01             	lea    0x1(%edi),%ecx
 45f:	f7 f6                	div    %esi
 461:	0f b6 92 44 08 00 00 	movzbl 0x844(%edx),%edx
  }while((x /= base) != 0);
 468:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 46a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 46d:	75 e9                	jne    458 <printint+0x38>
  if(neg)
 46f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 472:	8b 75 c0             	mov    -0x40(%ebp),%esi
 475:	85 c0                	test   %eax,%eax
 477:	74 08                	je     481 <printint+0x61>
    buf[i++] = '-';
 479:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 47e:	8d 4f 02             	lea    0x2(%edi),%ecx
 481:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 485:	8d 76 00             	lea    0x0(%esi),%esi
 488:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 48b:	83 ec 04             	sub    $0x4,%esp
 48e:	83 ef 01             	sub    $0x1,%edi
 491:	6a 01                	push   $0x1
 493:	53                   	push   %ebx
 494:	56                   	push   %esi
 495:	88 45 d7             	mov    %al,-0x29(%ebp)
 498:	e8 e5 fe ff ff       	call   382 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 49d:	83 c4 10             	add    $0x10,%esp
 4a0:	39 df                	cmp    %ebx,%edi
 4a2:	75 e4                	jne    488 <printint+0x68>
    putc(fd, buf[i]);
}
 4a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4a7:	5b                   	pop    %ebx
 4a8:	5e                   	pop    %esi
 4a9:	5f                   	pop    %edi
 4aa:	5d                   	pop    %ebp
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4b9:	eb 8b                	jmp    446 <printint+0x26>
 4bb:	90                   	nop
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4d5:	0f b6 1e             	movzbl (%esi),%ebx
 4d8:	83 c6 01             	add    $0x1,%esi
 4db:	84 db                	test   %bl,%bl
 4dd:	0f 84 b0 00 00 00    	je     593 <printf+0xd3>
 4e3:	31 d2                	xor    %edx,%edx
 4e5:	eb 39                	jmp    520 <printf+0x60>
 4e7:	89 f6                	mov    %esi,%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4f0:	83 f8 25             	cmp    $0x25,%eax
 4f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 4f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 4fb:	74 18                	je     515 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 500:	83 ec 04             	sub    $0x4,%esp
 503:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 506:	6a 01                	push   $0x1
 508:	50                   	push   %eax
 509:	57                   	push   %edi
 50a:	e8 73 fe ff ff       	call   382 <write>
 50f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 512:	83 c4 10             	add    $0x10,%esp
 515:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 518:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 51c:	84 db                	test   %bl,%bl
 51e:	74 73                	je     593 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 520:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 522:	0f be cb             	movsbl %bl,%ecx
 525:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 528:	74 c6                	je     4f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 52a:	83 fa 25             	cmp    $0x25,%edx
 52d:	75 e6                	jne    515 <printf+0x55>
      if(c == 'd'){
 52f:	83 f8 64             	cmp    $0x64,%eax
 532:	0f 84 f8 00 00 00    	je     630 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 538:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 53e:	83 f9 70             	cmp    $0x70,%ecx
 541:	74 5d                	je     5a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 543:	83 f8 73             	cmp    $0x73,%eax
 546:	0f 84 84 00 00 00    	je     5d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 54c:	83 f8 63             	cmp    $0x63,%eax
 54f:	0f 84 ea 00 00 00    	je     63f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 555:	83 f8 25             	cmp    $0x25,%eax
 558:	0f 84 c2 00 00 00    	je     620 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 55e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 561:	83 ec 04             	sub    $0x4,%esp
 564:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 568:	6a 01                	push   $0x1
 56a:	50                   	push   %eax
 56b:	57                   	push   %edi
 56c:	e8 11 fe ff ff       	call   382 <write>
 571:	83 c4 0c             	add    $0xc,%esp
 574:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 577:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 57a:	6a 01                	push   $0x1
 57c:	50                   	push   %eax
 57d:	57                   	push   %edi
 57e:	83 c6 01             	add    $0x1,%esi
 581:	e8 fc fd ff ff       	call   382 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 586:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 58a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 58d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 58f:	84 db                	test   %bl,%bl
 591:	75 8d                	jne    520 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 593:	8d 65 f4             	lea    -0xc(%ebp),%esp
 596:	5b                   	pop    %ebx
 597:	5e                   	pop    %esi
 598:	5f                   	pop    %edi
 599:	5d                   	pop    %ebp
 59a:	c3                   	ret    
 59b:	90                   	nop
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5a0:	83 ec 0c             	sub    $0xc,%esp
 5a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 5a8:	6a 00                	push   $0x0
 5aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5ad:	89 f8                	mov    %edi,%eax
 5af:	8b 13                	mov    (%ebx),%edx
 5b1:	e8 6a fe ff ff       	call   420 <printint>
        ap++;
 5b6:	89 d8                	mov    %ebx,%eax
 5b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 5bd:	83 c0 04             	add    $0x4,%eax
 5c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5c3:	e9 4d ff ff ff       	jmp    515 <printf+0x55>
 5c8:	90                   	nop
 5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5d3:	8b 18                	mov    (%eax),%ebx
        ap++;
 5d5:	83 c0 04             	add    $0x4,%eax
 5d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 5db:	b8 3c 08 00 00       	mov    $0x83c,%eax
 5e0:	85 db                	test   %ebx,%ebx
 5e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 5e5:	0f b6 03             	movzbl (%ebx),%eax
 5e8:	84 c0                	test   %al,%al
 5ea:	74 23                	je     60f <printf+0x14f>
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 5f6:	83 ec 04             	sub    $0x4,%esp
 5f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 5fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5fe:	50                   	push   %eax
 5ff:	57                   	push   %edi
 600:	e8 7d fd ff ff       	call   382 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 605:	0f b6 03             	movzbl (%ebx),%eax
 608:	83 c4 10             	add    $0x10,%esp
 60b:	84 c0                	test   %al,%al
 60d:	75 e1                	jne    5f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 60f:	31 d2                	xor    %edx,%edx
 611:	e9 ff fe ff ff       	jmp    515 <printf+0x55>
 616:	8d 76 00             	lea    0x0(%esi),%esi
 619:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 620:	83 ec 04             	sub    $0x4,%esp
 623:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 626:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 629:	6a 01                	push   $0x1
 62b:	e9 4c ff ff ff       	jmp    57c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 630:	83 ec 0c             	sub    $0xc,%esp
 633:	b9 0a 00 00 00       	mov    $0xa,%ecx
 638:	6a 01                	push   $0x1
 63a:	e9 6b ff ff ff       	jmp    5aa <printf+0xea>
 63f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 642:	83 ec 04             	sub    $0x4,%esp
 645:	8b 03                	mov    (%ebx),%eax
 647:	6a 01                	push   $0x1
 649:	88 45 e4             	mov    %al,-0x1c(%ebp)
 64c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 64f:	50                   	push   %eax
 650:	57                   	push   %edi
 651:	e8 2c fd ff ff       	call   382 <write>
 656:	e9 5b ff ff ff       	jmp    5b6 <printf+0xf6>
 65b:	66 90                	xchg   %ax,%ax
 65d:	66 90                	xchg   %ax,%ax
 65f:	90                   	nop

00000660 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 660:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 661:	a1 e8 0a 00 00       	mov    0xae8,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 666:	89 e5                	mov    %esp,%ebp
 668:	57                   	push   %edi
 669:	56                   	push   %esi
 66a:	53                   	push   %ebx
 66b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 66e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 670:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 673:	39 c8                	cmp    %ecx,%eax
 675:	73 19                	jae    690 <free+0x30>
 677:	89 f6                	mov    %esi,%esi
 679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 680:	39 d1                	cmp    %edx,%ecx
 682:	72 1c                	jb     6a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 684:	39 d0                	cmp    %edx,%eax
 686:	73 18                	jae    6a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 688:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 68a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 68c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 68e:	72 f0                	jb     680 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 690:	39 d0                	cmp    %edx,%eax
 692:	72 f4                	jb     688 <free+0x28>
 694:	39 d1                	cmp    %edx,%ecx
 696:	73 f0                	jae    688 <free+0x28>
 698:	90                   	nop
 699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 6a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6a6:	39 d7                	cmp    %edx,%edi
 6a8:	74 19                	je     6c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6ad:	8b 50 04             	mov    0x4(%eax),%edx
 6b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6b3:	39 f1                	cmp    %esi,%ecx
 6b5:	74 23                	je     6da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 6b9:	a3 e8 0a 00 00       	mov    %eax,0xae8
}
 6be:	5b                   	pop    %ebx
 6bf:	5e                   	pop    %esi
 6c0:	5f                   	pop    %edi
 6c1:	5d                   	pop    %ebp
 6c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 6c3:	03 72 04             	add    0x4(%edx),%esi
 6c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6c9:	8b 10                	mov    (%eax),%edx
 6cb:	8b 12                	mov    (%edx),%edx
 6cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6d0:	8b 50 04             	mov    0x4(%eax),%edx
 6d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6d6:	39 f1                	cmp    %esi,%ecx
 6d8:	75 dd                	jne    6b7 <free+0x57>
    p->s.size += bp->s.size;
 6da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 6dd:	a3 e8 0a 00 00       	mov    %eax,0xae8
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 6e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 6e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 6e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6ea:	5b                   	pop    %ebx
 6eb:	5e                   	pop    %esi
 6ec:	5f                   	pop    %edi
 6ed:	5d                   	pop    %ebp
 6ee:	c3                   	ret    
 6ef:	90                   	nop

000006f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
 6f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 6fc:	8b 15 e8 0a 00 00    	mov    0xae8,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 702:	8d 78 07             	lea    0x7(%eax),%edi
 705:	c1 ef 03             	shr    $0x3,%edi
 708:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 70b:	85 d2                	test   %edx,%edx
 70d:	0f 84 a3 00 00 00    	je     7b6 <malloc+0xc6>
 713:	8b 02                	mov    (%edx),%eax
 715:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 718:	39 cf                	cmp    %ecx,%edi
 71a:	76 74                	jbe    790 <malloc+0xa0>
 71c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 722:	be 00 10 00 00       	mov    $0x1000,%esi
 727:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 72e:	0f 43 f7             	cmovae %edi,%esi
 731:	ba 00 80 00 00       	mov    $0x8000,%edx
 736:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 73c:	0f 46 da             	cmovbe %edx,%ebx
 73f:	eb 10                	jmp    751 <malloc+0x61>
 741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 748:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 74a:	8b 48 04             	mov    0x4(%eax),%ecx
 74d:	39 cf                	cmp    %ecx,%edi
 74f:	76 3f                	jbe    790 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 751:	39 05 e8 0a 00 00    	cmp    %eax,0xae8
 757:	89 c2                	mov    %eax,%edx
 759:	75 ed                	jne    748 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 75b:	83 ec 0c             	sub    $0xc,%esp
 75e:	53                   	push   %ebx
 75f:	e8 86 fc ff ff       	call   3ea <sbrk>
  if(p == (char*)-1)
 764:	83 c4 10             	add    $0x10,%esp
 767:	83 f8 ff             	cmp    $0xffffffff,%eax
 76a:	74 1c                	je     788 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 76c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 76f:	83 ec 0c             	sub    $0xc,%esp
 772:	83 c0 08             	add    $0x8,%eax
 775:	50                   	push   %eax
 776:	e8 e5 fe ff ff       	call   660 <free>
  return freep;
 77b:	8b 15 e8 0a 00 00    	mov    0xae8,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 781:	83 c4 10             	add    $0x10,%esp
 784:	85 d2                	test   %edx,%edx
 786:	75 c0                	jne    748 <malloc+0x58>
        return 0;
 788:	31 c0                	xor    %eax,%eax
 78a:	eb 1c                	jmp    7a8 <malloc+0xb8>
 78c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 790:	39 cf                	cmp    %ecx,%edi
 792:	74 1c                	je     7b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 794:	29 f9                	sub    %edi,%ecx
 796:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 799:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 79c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 79f:	89 15 e8 0a 00 00    	mov    %edx,0xae8
      return (void*)(p + 1);
 7a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 7a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ab:	5b                   	pop    %ebx
 7ac:	5e                   	pop    %esi
 7ad:	5f                   	pop    %edi
 7ae:	5d                   	pop    %ebp
 7af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 7b0:	8b 08                	mov    (%eax),%ecx
 7b2:	89 0a                	mov    %ecx,(%edx)
 7b4:	eb e9                	jmp    79f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7b6:	c7 05 e8 0a 00 00 ec 	movl   $0xaec,0xae8
 7bd:	0a 00 00 
 7c0:	c7 05 ec 0a 00 00 ec 	movl   $0xaec,0xaec
 7c7:	0a 00 00 
    base.s.size = 0;
 7ca:	b8 ec 0a 00 00       	mov    $0xaec,%eax
 7cf:	c7 05 f0 0a 00 00 00 	movl   $0x0,0xaf0
 7d6:	00 00 00 
 7d9:	e9 3e ff ff ff       	jmp    71c <malloc+0x2c>
