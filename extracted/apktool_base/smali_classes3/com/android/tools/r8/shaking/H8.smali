.class public final synthetic Lcom/android/tools/r8/shaking/H8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wb0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/H8;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/H8;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method
