.class public final synthetic Lorg/eclipse/jdt/core/dom/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:[C


# direct methods
.method public synthetic constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/k;->b:[C

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/k;->b:[C

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->c([CLorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z

    move-result p1

    return p1
.end method
