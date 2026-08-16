.class public final Leg/z1;
.super Lyf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/z1$a;
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# static fields
.field public static final c:Leg/z1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Z
    .annotation build LLf/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leg/z1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leg/z1$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Leg/z1;->c:Leg/z1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Leg/z1;->c:Leg/z1$a;

    invoke-direct {p0, v0}, Lyf/a;-><init>(Lyf/j$c;)V

    return-void
.end method
