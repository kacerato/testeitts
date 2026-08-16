.class public Lcom/android/tools/r8/internal/nJ$o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ$o;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xef

    iput p1, p0, Lcom/android/tools/r8/internal/nJ$o;->a:I

    return-void
.end method
