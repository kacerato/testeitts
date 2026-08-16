.class public Lcl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/e;


# static fields
.field public static final f:Lcl/i;

.field public static final g:Lcl/i;

.field public static final h:Lcl/i;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcl/i;

    const-string v1, "kyber512"

    const/4 v2, 0x2

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/i;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcl/i;->f:Lcl/i;

    new-instance v0, Lcl/i;

    const-string v1, "kyber768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/i;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcl/i;->g:Lcl/i;

    new-instance v0, Lcl/i;

    const-string v1, "kyber1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/i;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcl/i;->h:Lcl/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl/i;->b:Ljava/lang/String;

    iput p2, p0, Lcl/i;->c:I

    iput p3, p0, Lcl/i;->d:I

    iput-boolean p4, p0, Lcl/i;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcl/b;
    .locals 3

    new-instance v0, Lcl/b;

    iget v1, p0, Lcl/i;->c:I

    iget-boolean v2, p0, Lcl/i;->e:Z

    invoke-direct {v0, v1, v2}, Lcl/b;-><init>(IZ)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcl/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcl/i;->d:I

    return v0
.end method
