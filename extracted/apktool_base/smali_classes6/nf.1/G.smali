.class public final Lnf/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnf/G;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnf/G;

    invoke-direct {v0}, Lnf/G;-><init>()V

    sput-object v0, Lnf/G;->a:Lnf/G;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lnf/F;
    .locals 4
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lnf/F;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lnf/F;-><init>(III)V

    return-object v0
.end method
