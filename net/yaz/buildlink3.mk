# $NetBSD: buildlink3.mk,v 1.22 2012/06/14 07:43:18 sbd Exp $

BUILDLINK_TREE+=	yaz

.if !defined(YAZ_BUILDLINK3_MK)
YAZ_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.yaz+=	yaz>=2.0
BUILDLINK_ABI_DEPENDS.yaz+=	yaz>=4.1.6nb5
BUILDLINK_PKGSRCDIR.yaz?=	../../net/yaz

.include "../../converters/libiconv/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.endif # YAZ_BUILDLINK3_MK

BUILDLINK_TREE+=	-yaz
