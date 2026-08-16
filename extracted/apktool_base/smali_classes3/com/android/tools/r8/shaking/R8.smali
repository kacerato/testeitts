.class public final synthetic Lcom/android/tools/r8/shaking/R8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/G;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/R8;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R8;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/N;->g(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
