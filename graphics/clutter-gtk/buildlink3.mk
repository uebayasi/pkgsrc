# $NetBSD: buildlink3.mk,v 1.15 2012/09/15 10:04:48 obache Exp $
#

BUILDLINK_TREE+=	clutter-gtk

.if !defined(CLUTTER_GTK_BUILDLINK3_MK)
CLUTTER_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clutter-gtk+=	clutter-gtk>=0.10.0
BUILDLINK_ABI_DEPENDS.clutter-gtk+=	clutter-gtk>=0.10.8nb8
BUILDLINK_PKGSRCDIR.clutter-gtk?=	../../graphics/clutter-gtk

.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/clutter/buildlink3.mk"
.endif # CLUTTER_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-clutter-gtk
