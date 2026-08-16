.class public Loh/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/G0;

.field public static final b:Loh/I0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loh/G0;

    invoke-direct {v0}, Loh/G0;-><init>()V

    sput-object v0, Loh/u0;->a:Loh/G0;

    new-instance v0, Loh/I0;

    invoke-direct {v0}, Loh/I0;-><init>()V

    sput-object v0, Loh/u0;->b:Loh/I0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/h;)Loh/G0;
    .locals 2

    invoke-virtual {p0}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Loh/u0;->a:Loh/G0;

    return-object p0

    :cond_0
    new-instance v0, Loh/G0;

    invoke-direct {v0, p0}, Loh/G0;-><init>(Loh/h;)V

    return-object v0
.end method

.method public static b(Loh/h;)Loh/I0;
    .locals 2

    invoke-virtual {p0}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Loh/u0;->b:Loh/I0;

    return-object p0

    :cond_0
    new-instance v0, Loh/I0;

    invoke-direct {v0, p0}, Loh/I0;-><init>(Loh/h;)V

    return-object v0
.end method
