.class public Lcom/android/tools/r8/internal/Qj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Pj;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Qj;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    return-void
.end method
