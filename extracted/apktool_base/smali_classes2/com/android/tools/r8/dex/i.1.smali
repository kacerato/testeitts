.class public abstract Lcom/android/tools/r8/dex/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/dex/i;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/graph/L2;
.end method
