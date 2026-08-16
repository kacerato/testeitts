.class public final Lkotlin/time/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lkotlin/time/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/time/e$b;

    invoke-direct {v0}, Lkotlin/time/e$b;-><init>()V

    sput-object v0, Lkotlin/time/e$b;->b:Lkotlin/time/e$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/time/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/time/r;->b()Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method
