.class public Ljn/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x7

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I = 0x3

.field public static e:I = 0x4

.field public static f:I = 0x5

.field public static g:I = 0x6

.field public static h:Lwn/a; = null

.field public static i:Lwn/a; = null

.field public static j:Lwn/a; = null

.field public static k:Lwn/a; = null

.field public static l:Lwn/a; = null

.field public static m:Lwn/a; = null

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x4

.field public static final q:I = 0x8

.field public static final r:I = 0x10

.field public static final s:I = 0xffff


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lwn/a;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->h:Lwn/a;

    new-instance v0, Lwn/a;

    sget v1, Ljn/P;->c:I

    sget v2, Ljn/P;->a:I

    invoke-direct {v0, v1, v2}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->i:Lwn/a;

    new-instance v0, Lwn/a;

    sget v1, Ljn/P;->d:I

    sget v2, Ljn/P;->a:I

    invoke-direct {v0, v1, v2}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->j:Lwn/a;

    new-instance v0, Lwn/a;

    sget v1, Ljn/P;->f:I

    sget v2, Ljn/P;->a:I

    invoke-direct {v0, v1, v2}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->k:Lwn/a;

    new-instance v0, Lwn/a;

    sget v1, Ljn/P;->e:I

    invoke-direct {v0, v1, v1}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->l:Lwn/a;

    new-instance v0, Lwn/a;

    sget v1, Ljn/P;->g:I

    invoke-direct {v0, v1, v1}, Lwn/a;-><init>(II)V

    sput-object v0, Ljn/P;->m:Lwn/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
