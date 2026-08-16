.class public final LXf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXf/m;
.implements LXf/e;


# static fields
.field public static final a:LXf/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LXf/g;

    invoke-direct {v0}, LXf/g;-><init>()V

    sput-object v0, LXf/g;->a:LXf/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)LXf/m;
    .locals 0

    invoke-virtual {p0, p1}, LXf/g;->c(I)LXf/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)LXf/m;
    .locals 0

    invoke-virtual {p0, p1}, LXf/g;->d(I)LXf/g;

    move-result-object p1

    return-object p1
.end method

.method public c(I)LXf/g;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, LXf/g;->a:LXf/g;

    return-object p1
.end method

.method public d(I)LXf/g;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, LXf/g;->a:LXf/g;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lpf/U;->b:Lpf/U;

    return-object v0
.end method
