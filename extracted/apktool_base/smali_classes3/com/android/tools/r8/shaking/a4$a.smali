.class public Lcom/android/tools/r8/shaking/a4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/a4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y10;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/a4$a;->a:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method


# virtual methods
.method public a(ZLcom/android/tools/r8/shaking/Z3;)Lcom/android/tools/r8/shaking/a4$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a4$a;->a:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/a4;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/a4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/a4$a;->a:Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/a4;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    return-object v0
.end method
