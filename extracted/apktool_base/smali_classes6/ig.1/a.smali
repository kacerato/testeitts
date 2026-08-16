.class public final Lig/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lig/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lig/a;

    invoke-direct {v0}, Lig/a;-><init>()V

    sput-object v0, Lig/a;->a:Lig/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Lig/a;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    sput-boolean p1, Lig/a;->b:Z

    return-void
.end method
