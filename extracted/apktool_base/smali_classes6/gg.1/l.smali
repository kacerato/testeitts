.class public interface abstract Lgg/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgg/E;
.implements Lgg/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgg/l$a;,
        Lgg/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgg/E<",
        "TE;>;",
        "Lgg/D<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final A4:I = 0x7fffffff

.field public static final B4:I = 0x0

.field public static final C4:I = -0x1

.field public static final E4:I = -0x2

.field public static final G4:I = -0x3

.field public static final I4:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final z4:Lgg/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lgg/l$b;->a:Lgg/l$b;

    sput-object v0, Lgg/l;->z4:Lgg/l$b;

    return-void
.end method
