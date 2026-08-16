.class public Lcom/android/tools/r8/shaking/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/t3$a;
    }
.end annotation


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/t3;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/shaking/t3;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/shaking/t3;->e:Z

    iput-boolean p6, p0, Lcom/android/tools/r8/shaking/t3;->f:Z

    iput-boolean p7, p0, Lcom/android/tools/r8/shaking/t3;->g:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/t3;->a:Z

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/t3;->b:Z

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/t3$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/t3$a;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/t3$a;-><init>()V

    return-object v0
.end method
