.class public LIi/W$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:LIi/W$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIi/W$b;

    invoke-direct {v0}, LIi/W$b;-><init>()V

    sput-object v0, LIi/W$b;->a:LIi/W$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LIi/W$b;
    .locals 1

    sget-object v0, LIi/W$b;->a:LIi/W$b;

    return-object v0
.end method
