.class public final synthetic Lcom/android/tools/r8/shaking/Ie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/s3;

.field public final synthetic b:Lcom/android/tools/r8/shaking/f3$a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/s3;Lcom/android/tools/r8/shaking/f3$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Ie;->a:Lcom/android/tools/r8/shaking/s3;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Ie;->b:Lcom/android/tools/r8/shaking/f3$a;

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/Ie;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Ie;->a:Lcom/android/tools/r8/shaking/s3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Ie;->b:Lcom/android/tools/r8/shaking/f3$a;

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/Ie;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/s3;->a(Lcom/android/tools/r8/shaking/f3$a;Z)V

    return-void
.end method
