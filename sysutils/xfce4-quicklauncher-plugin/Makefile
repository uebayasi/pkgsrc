# $NetBSD: Makefile,v 1.22 2012/09/15 10:06:34 obache Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	1.9.4

DISTNAME=	xfce4-quicklauncher-plugin-${XFCE4_VERSION}
PKGREVISION=	12
CATEGORIES=	sysutils
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-quicklauncher-plugin/
COMMENT=	Xfce quicklaunch plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
