# $NetBSD: Makefile,v 1.1.1.1 2011/03/16 18:14:29 minskim Exp $

DISTNAME=	collection-genericrecommended-doc
PKGNAME=	tex-${DISTNAME}-2010
CATEGORIES=	print
MASTER_SITES=	# empty
TEXLIVE_REV=	19849

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.tug.org/texlive/
COMMENT=	Documentation for tex-collection-genericrecommended

DEPENDS+=	tex-collection-basic-doc-[0-9]*:../../print/tex-collection-basic-doc
DEPENDS+=	tex-epsf-doc-[0-9]*:../../print/tex-epsf-doc
DEPENDS+=	tex-fontname-doc-[0-9]*:../../fonts/tex-fontname-doc
# tex-genmisc-doc doeesn't have a documentation package
DEPENDS+=	tex-kastrup-doc-[0-9]*:../../math/tex-kastrup-doc
DEPENDS+=	tex-multido-doc-[0-9]*:../../devel/tex-multido-doc
DEPENDS+=	tex-path-doc-[0-9]*:../../print/tex-path-doc
DEPENDS+=	tex-tex-ps-doc-[0-9]*:../../graphics/tex-tex-ps-doc
DEPENDS+=	tex-ulem-doc-[0-9]*:../../print/tex-ulem-doc

META_PACKAGE=	yes

.include "../../mk/bsd.pkg.mk"
