# $NetBSD: Makefile,v 1.11 2012/05/09 19:18:54 rhaen Exp $
#

DISTNAME=	CAM-PDF-1.57
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/C/CD/CDOLAN/}

MAINTAINER=	rhaen@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/CAM-PDF/
COMMENT=	Perl 5 PDF manipulation library
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	csh:run

REPLACE_CSH=	bin/asciify

DEPENDS+=	p5-Crypt-RC4>=2.02:../../security/p5-Crypt-RC4
DEPENDS+=	p5-Text-PDF>=0.29:../../textproc/p5-Text-PDF
DEPENDS+=	p5-Digest-MD5>=2.16:../../security/p5-Digest-MD5

PERL5_PACKLIST=	auto/CAM/PDF/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
