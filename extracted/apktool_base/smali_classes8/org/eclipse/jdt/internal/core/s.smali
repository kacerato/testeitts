.class public final synthetic Lorg/eclipse/jdt/internal/core/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/NameLookup;->a([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
