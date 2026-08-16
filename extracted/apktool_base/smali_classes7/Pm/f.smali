.class public LPm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXm/b;


# instance fields
.field public final a:LUm/A;

.field public final b:C

.field public final c:Z

.field public final d:Z

.field public e:LPm/f;

.field public f:LPm/f;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(LUm/A;CZZLPm/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LPm/f;->g:I

    iput v0, p0, LPm/f;->h:I

    iput-object p1, p0, LPm/f;->a:LUm/A;

    iput-char p2, p0, LPm/f;->b:C

    iput-boolean p3, p0, LPm/f;->c:Z

    iput-boolean p4, p0, LPm/f;->d:Z

    iput-object p5, p0, LPm/f;->e:LPm/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, LPm/f;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LPm/f;->h:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, LPm/f;->c:Z

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, LPm/f;->g:I

    return v0
.end method
