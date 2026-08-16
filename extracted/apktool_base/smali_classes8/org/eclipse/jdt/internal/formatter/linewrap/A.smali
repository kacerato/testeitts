.class public final synthetic Lorg/eclipse/jdt/internal/formatter/linewrap/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/A;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/A;->b:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    check-cast p1, Lorg/eclipse/jdt/core/dom/Statement;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->g(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;Lorg/eclipse/jdt/core/dom/Statement;)Z

    move-result p1

    return p1
.end method
