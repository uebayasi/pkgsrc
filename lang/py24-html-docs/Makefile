# $NetBSD: Makefile,v 1.8 2011/06/17 12:19:33 obache Exp $
#

DISTNAME=	html-2.4.4
PKGNAME=	${DISTNAME:S/html/py24-html-docs/}
CATEGORIES=	lang python
MASTER_SITES=	http://www.python.org/ftp/python/doc/2.4.4/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.python.org/doc/
COMMENT=	HTML Documentation for Python

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/Python-Docs-2.4.4/
DIST_SUBDIR=	python

USE_TOOLS+=	pax

NO_CONFIGURE=	yes
NO_BUILD=	yes

HTMLDIR=	share/doc/html/python2.4
PLIST_SRC=	${WRKDIR}/.PLIST_SRC

INSTALLATION_DIRS=	${HTMLDIR}

do-install:
	cd ${WRKSRC} && pax -rw -pe [a-z]* ${DESTDIR}${PREFIX}/${HTMLDIR}
	cd ${DESTDIR}${PREFIX} && ${FIND} ${HTMLDIR} -type f -print >>${PLIST_SRC}

.include "../../mk/bsd.pkg.mk"
