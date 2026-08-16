.class public Lcom/android/tools/r8/shaking/M3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/M3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->a:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->b:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->c:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->d:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->e:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->f:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->g:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/M3$a;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/X6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/shaking/M3$a;-><init>()V

    return-void
.end method
