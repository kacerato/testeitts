.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapResult"
.end annotation


# static fields
.field public static final NO_WRAP_NEEDED:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;


# instance fields
.field public final extraPenalty:I

.field public final nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

.field public final penalty:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;-><init>(DILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;)V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->NO_WRAP_NEEDED:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;

    return-void
.end method

.method public constructor <init>(DILorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->penalty:D

    iput p3, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->extraPenalty:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapResult;->nextWrap:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapExecutor$WrapInfo;

    return-void
.end method
