.class public final synthetic Lcom/android/tools/r8/shaking/G8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/vb0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/G8;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/G8;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Z

    move-result p1

    return p1
.end method
