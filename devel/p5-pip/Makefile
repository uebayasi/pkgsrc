# $NetBSD: Makefile,v 1.5 2011/12/09 06:57:45 hiramatsu Exp $

DISTNAME=	pip-1.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AD/ADAMK/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/pip/
COMMENT=	Perl Installation Program, for scripted+3rd-party distribution installation
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-Archive-Zip>=1.29:../../archivers/p5-Archive-Zip
DEPENDS+=	p5-CPAN-Inject>=0.07:../../devel/p5-CPAN-Inject
DEPENDS+=	p5-File-Which>=1.08:../../devel/p5-File-Which
DEPENDS+=	p5-File-pushd>=0.32:../../devel/p5-File-pushd
DEPENDS+=	{perl>=5.10.0,p5-IO-Zlib-[0-9]*}:../../devel/p5-IO-Zlib
DEPENDS+=	p5-PAR-Dist>=0.25:../../devel/p5-PAR-Dist
DEPENDS+=	p5-Params-Util>=1.00:../../devel/p5-Params-Util
DEPENDS+=	p5-URI-[0-9]*:../../www/p5-URI
DEPENDS+=	p5-libwww-[0-9]*:../../www/p5-libwww

BUILD_DEPENDS+=	p5-LWP-Online>=1.06:../../www/p5-LWP-Online
BUILD_DEPENDS+=	p5-Test-Script>=1.02:../../devel/p5-Test-Script

PERL5_PACKLIST=		auto/pip/.packlist
#PERL5_MODULE_TYPE=	Module::Install::Bundled
MAKE_PARAMS+=	--skipdeps

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
