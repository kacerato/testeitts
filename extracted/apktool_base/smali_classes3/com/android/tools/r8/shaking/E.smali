.class public final Lcom/android/tools/r8/shaking/E;
.super Lcom/android/tools/r8/shaking/F;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/shaking/s2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/s2;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/shaking/E;->d:Lcom/android/tools/r8/shaking/s2;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/D5;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/E;->d:Lcom/android/tools/r8/shaking/s2;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/shaking/M5;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/M5;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method
