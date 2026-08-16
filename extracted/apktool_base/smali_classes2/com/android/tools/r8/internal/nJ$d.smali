.class public Lcom/android/tools/r8/internal/nJ$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:I

.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ$d;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/nJ$d;->a:I

    return-void
.end method
