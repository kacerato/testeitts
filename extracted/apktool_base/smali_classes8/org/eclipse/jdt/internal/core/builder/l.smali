.class public final synthetic Lorg/eclipse/jdt/internal/core/builder/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [[C

    check-cast p2, [[C

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/builder/ReferenceCollection;->compareCharCharArray([[C[[C)I

    move-result p1

    return p1
.end method
