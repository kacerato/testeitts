.class public final Lcom/android/tools/r8/internal/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/s3;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/s3;

.field public final synthetic b:Lcom/android/tools/r8/internal/s3;

.field public final synthetic c:Lcom/android/tools/r8/internal/s3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/s3;Lcom/android/tools/r8/internal/s3;Lcom/android/tools/r8/internal/s3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/r3;->c:Lcom/android/tools/r8/internal/s3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/r3;->a:Lcom/android/tools/r8/internal/s3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/r3;->b:Lcom/android/tools/r8/internal/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zX;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/r3;->a:Lcom/android/tools/r8/internal/s3;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/s3;->a(Lcom/android/tools/r8/internal/zX;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/r3;->b:Lcom/android/tools/r8/internal/s3;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/s3;->a(Lcom/android/tools/r8/internal/zX;)V

    return-void
.end method
