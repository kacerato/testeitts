.class public final synthetic Lcom/android/tools/r8/shaking/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/B5;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g7;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b1;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/g7;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/b1;)Z

    move-result p1

    return p1
.end method
