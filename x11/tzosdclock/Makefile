# $NetBSD: Makefile,v 1.4 2009/02/07 22:02:30 joerg Exp $
#

DISTNAME=		tzosdclock_1.0.2
PKGNAME=		tzosdclock-1.0.2
PKGREVISION=		2
CATEGORIES=		x11
MASTER_SITES=		http://www.unixdev.net/downloads/tzosdclock/1.0.2/

MAINTAINER=		inittab@unixdev.net
HOMEPAGE=		http://www.unixdev.net/projects/tzosdclock
COMMENT=		OnScreen Display Clock for Multiple Timezones

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=		yes

INSTALL_MAKE_FLAGS+=	DEST=${DESTDIR}${PREFIX}/bin \
			MAN=${DESTDIR}${PREFIX}/${PKGMANDIR}

.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/xosd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
