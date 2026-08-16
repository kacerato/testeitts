.class public Lkotlin/jvm/internal/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Lnf/l0;
    version = "1.2"
.end annotation


# static fields
.field public static final b:Lkotlin/jvm/internal/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/jvm/internal/r$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/r$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/r$a;->b:Lkotlin/jvm/internal/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lkotlin/jvm/internal/r$a;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/r$a;->b:Lkotlin/jvm/internal/r$a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/r$a;->b:Lkotlin/jvm/internal/r$a;

    return-object v0
.end method
