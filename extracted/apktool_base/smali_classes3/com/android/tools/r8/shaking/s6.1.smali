.class public final synthetic Lcom/android/tools/r8/shaking/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic b:Lcom/android/tools/r8/shaking/v3;

.field public final synthetic c:Lcom/android/tools/r8/shaking/H3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s6;->a:Lcom/android/tools/r8/shaking/I4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/s6;->b:Lcom/android/tools/r8/shaking/v3;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/s6;->c:Lcom/android/tools/r8/shaking/H3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s6;->a:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/s6;->b:Lcom/android/tools/r8/shaking/v3;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/s6;->c:Lcom/android/tools/r8/shaking/H3;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/shaking/H3;)V

    return-void
.end method
