.class public final Log/h;
.super Log/j;
.source "SourceFile"


# static fields
.field public static final a:Log/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Log/h;

    invoke-direct {v0}, Log/h;-><init>()V

    sput-object v0, Log/h;->a:Log/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Log/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
