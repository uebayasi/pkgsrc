# $NetBSD: Makefile,v 1.1 2012/08/20 11:41:46 ryoon Exp $
#

DISTNAME=	openxenmanager_0.r80+dfsg.orig
PKGNAME=	openxenmanager-0.0.80
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/o/openxenmanager/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/openxenmanager/
COMMENT=	Open source XenServer/Xen Cloud Platform interface
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# none
NO_BUILD=	yes

INSTALLATION_DIRS=	bin share

REPLACE_PYTHON=		openxenmanager/*py openxenmanager/pygtk_chart/*py

OXMDIR=			${PREFIX}

SUBST_CLASSES+=		path
SUBST_STAGE.path=	pre-configure
SUBST_MESSAGE.path=	Replace pathes
SUBST_FILES.path=	openxenmanager.sh
SUBST_VARS.path=	PYTHONBIN OXMDIR

pre-patch:
	${INSTALL_DATA} ${FILESDIR}/openxenmanager.sh ${WRKSRC}

pre-configure:
	${FIND} ${WRKSRC}/openxenmanager -type f | grep pyc | xargs ${RM}
	${RM} ${WRKSRC}/openxenmanager/openxenmanager

do-install:
	cd ${WRKSRC} && \
		pax -rw  openxenmanager ${DESTDIR}${PREFIX}/share
	${INSTALL_SCRIPT} ${WRKSRC}/openxenmanager.sh \
		${DESTDIR}${PREFIX}/bin/openxenmanager

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
