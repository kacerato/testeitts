.class public final Lcom/android/tools/r8/shaking/F0;
.super Lcom/android/tools/r8/shaking/k0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/k0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/F0;->a:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/F0;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/N;->g(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
