# $NetBSD: Makefile,v 1.19 2012/01/18 14:44:24 adam Exp $

DISTNAME=	gift-openft-0.2.1.6
PKGREVISION=	7
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gift/}

MAINTAINER=	alex@catbull.com
HOMEPAGE=	http://gift.sourceforge.net/
COMMENT=	OpenFT Plugin for the gift daemon

PKG_DESTDIR_SUPPORT=	user-destdir

BDB_ACCEPTED=		db4 db5
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes

PTHREAD_AUTO_VARS=	yes
SHLIBTOOL_OVERRIDE=	# empty

.include "../../devel/zlib/buildlink3.mk"
.include "../../net/gift/buildlink3.mk"
.include "../../mk/bdb.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
