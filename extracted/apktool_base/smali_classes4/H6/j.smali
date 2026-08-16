.class public LH6/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Class;

.field public c:Z

.field public d:I

.field public e:[Ljava/lang/Class;

.field public f:[Ljava/lang/reflect/Parameter;

.field public g:Z

.field public h:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "returnType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LH6/j;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LH6/j;->e:[Ljava/lang/Class;

    .line 4
    iput-object v0, p0, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    .line 5
    iput-object p1, p0, LH6/j;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, LH6/j;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZI[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "returnType",
            "isMethod",
            "argumentsCount",
            "arguments"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    .line 9
    iput-object p1, p0, LH6/j;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, LH6/j;->b:Ljava/lang/Class;

    .line 11
    iput-boolean p3, p0, LH6/j;->c:Z

    .line 12
    iput p4, p0, LH6/j;->d:I

    .line 13
    iput-object p5, p0, LH6/j;->e:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZI[Ljava/lang/Class;ZLjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "returnType",
            "isMethod",
            "argumentsCount",
            "arguments",
            "isConstructor",
            "constructorClass"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    .line 16
    iput-object p1, p0, LH6/j;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, LH6/j;->b:Ljava/lang/Class;

    .line 18
    iput-boolean p3, p0, LH6/j;->c:Z

    .line 19
    iput p4, p0, LH6/j;->d:I

    .line 20
    iput-object p5, p0, LH6/j;->e:[Ljava/lang/Class;

    .line 21
    iput-boolean p6, p0, LH6/j;->g:Z

    .line 22
    iput-object p7, p0, LH6/j;->h:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZI[Ljava/lang/Class;[Ljava/lang/reflect/Parameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "returnType",
            "isMethod",
            "argumentsCount",
            "arguments",
            "argumentsTypes"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, LH6/j;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, LH6/j;->b:Ljava/lang/Class;

    .line 26
    iput-boolean p3, p0, LH6/j;->c:Z

    .line 27
    iput p4, p0, LH6/j;->d:I

    .line 28
    iput-object p5, p0, LH6/j;->e:[Ljava/lang/Class;

    .line 29
    iput-object p6, p0, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ZI[Ljava/lang/Class;[Ljava/lang/reflect/Parameter;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "returnType",
            "isMethod",
            "argumentsCount",
            "arguments",
            "argumentsTypes",
            "isConstructor",
            "constructorClass"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, LH6/j;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, LH6/j;->b:Ljava/lang/Class;

    .line 33
    iput-boolean p3, p0, LH6/j;->c:Z

    .line 34
    iput p4, p0, LH6/j;->d:I

    .line 35
    iput-object p5, p0, LH6/j;->e:[Ljava/lang/Class;

    .line 36
    iput-object p6, p0, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    .line 37
    iput-boolean p7, p0, LH6/j;->g:Z

    .line 38
    iput-object p8, p0, LH6/j;->h:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call toString()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
