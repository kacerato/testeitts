.class public final synthetic Lorg/eclipse/jdt/internal/formatter/I0;
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

    check-cast p1, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/formatter/LineBreaksPreparator;->a(Lorg/eclipse/jdt/core/dom/Statement;)Z

    move-result p1

    return p1
.end method
