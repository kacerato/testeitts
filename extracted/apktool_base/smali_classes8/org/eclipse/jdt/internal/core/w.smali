.class public final synthetic Lorg/eclipse/jdt/internal/core/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/NameLookup$IPrefixMatcherCharArray;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches([C[CZ)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[CZ)Z

    move-result p1

    return p1
.end method
