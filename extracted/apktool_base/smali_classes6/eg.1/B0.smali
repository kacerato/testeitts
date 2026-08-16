.class public final Leg/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/S;


# annotations
.annotation build Leg/e0;
.end annotation


# static fields
.field public static final b:Leg/B0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/B0;

    invoke-direct {v0}, Leg/B0;-><init>()V

    sput-object v0, Leg/B0;->b:Leg/B0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyf/l;->b:Lyf/l;

    return-object v0
.end method
