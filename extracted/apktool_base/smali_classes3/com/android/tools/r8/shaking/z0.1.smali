.class public final Lcom/android/tools/r8/shaking/z0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/z0;->a:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/z0;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
