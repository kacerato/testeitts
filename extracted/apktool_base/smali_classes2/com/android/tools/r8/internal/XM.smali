.class public final Lcom/android/tools/r8/internal/XM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/mP;

.field public b:Lcom/android/tools/r8/internal/DO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/XM;->a:Lcom/android/tools/r8/internal/mP;

    sget-object v0, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    iput-object v0, p0, Lcom/android/tools/r8/internal/XM;->b:Lcom/android/tools/r8/internal/DO;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/YM;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/XM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/XM;->b:Lcom/android/tools/r8/internal/DO;

    check-cast v0, Lcom/android/tools/r8/internal/CO;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XM;->a:Lcom/android/tools/r8/internal/mP;

    iget-object v2, p0, Lcom/android/tools/r8/internal/XM;->b:Lcom/android/tools/r8/internal/DO;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    return-object v0
.end method
