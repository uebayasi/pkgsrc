# $NetBSD: Makefile,v 1.18 2008/07/14 12:56:10 joerg Exp $

DISTNAME=	nemesis-1.4
PKGREVISION=	1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nemesis/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://jeff.wwti.com/nemesis/
COMMENT=	Nemesis is a command-line UNIX network packet injection suite

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-libnet-includes=${BUILDLINK_PREFIX.libnet10}/include/libnet10
CONFIGURE_ARGS+=	--with-libnet-libs=${BUILDLINK_PREFIX.libnet10}/lib/libnet10

SUBST_CLASSES+=		conf
SUBST_STAGE.conf=	pre-configure
SUBST_FILES.conf=	configure
SUBST_SED.conf=		-e "s|libnet-config|libnet10-config|g"
SUBST_MESSAGE.conf=	Fixing configuration script.

.include "../../net/libpcap/buildlink3.mk"
.include "../../devel/libnet10/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
