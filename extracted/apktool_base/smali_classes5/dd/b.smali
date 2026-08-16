.class public Ldd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd/b$b;,
        Ldd/b$a;
    }
.end annotation


# instance fields
.field public a:Ldd/b$b;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ldd/d;

.field public e:Ldd/c;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ldd/a;

.field public j:Z

.field public k:Ldd/b$a;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public n:Landroid/view/SubMenu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public o:Landroid/view/MenuItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ldd/b;->f:I

    .line 4
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 6
    sget-object v0, Ldd/b$b;->Separator:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    return-void
.end method

.method public constructor <init>(ILdd/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutRes",
            "customViewListener"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Ldd/b;->f:I

    .line 26
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 28
    sget-object v0, Ldd/b$b;->CustomView:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 29
    iput p1, p0, Ldd/b;->h:I

    .line 30
    iput-object p2, p0, Ldd/b;->i:Ldd/a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILdd/c;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "textColor",
            "multiClickListener"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Ldd/b;->f:I

    .line 112
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 114
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 115
    iput p1, p0, Ldd/b;->f:I

    .line 116
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 117
    iput p3, p0, Ldd/b;->g:I

    .line 118
    iput-object p4, p0, Ldd/b;->e:Ldd/c;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILdd/d;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "textColor",
            "onSelectedListener"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Ldd/b;->f:I

    .line 76
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 78
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 79
    iput p1, p0, Ldd/b;->f:I

    .line 80
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 81
    iput p3, p0, Ldd/b;->g:I

    .line 82
    iput-object p4, p0, Ldd/b;->d:Ldd/d;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ldd/c;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "multiClickListener"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Ldd/b;->f:I

    .line 94
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 96
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 97
    iput p1, p0, Ldd/b;->f:I

    .line 98
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Ldd/b;->e:Ldd/c;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ldd/d;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "onSelectedListener"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Ldd/b;->f:I

    .line 58
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 60
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 61
    iput p1, p0, Ldd/b;->f:I

    .line 62
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Ldd/b;->d:Ldd/d;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "childs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Ldd/b;->f:I

    .line 130
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 132
    sget-object v0, Ldd/b$b;->Folder:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 133
    iput p1, p0, Ldd/b;->f:I

    .line 134
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Ldd/b;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ldd/b$b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "tittle"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Ldd/b;->f:I

    .line 17
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 19
    iput-object p1, p0, Ldd/b;->a:Ldd/b$b;

    .line 20
    iput-object p2, p0, Ldd/b;->b:Ljava/lang/String;

    .line 21
    sget-object p2, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne p1, p2, :cond_0

    .line 22
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Ldd/b;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ldd/b;->f:I

    .line 10
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 12
    sget-object v0, Ldd/b$b;->Tittle:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 13
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILdd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "textColor",
            "multiClickListener"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Ldd/b;->f:I

    .line 103
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 105
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 106
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 107
    iput p2, p0, Ldd/b;->g:I

    .line 108
    iput-object p3, p0, Ldd/b;->e:Ldd/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILdd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "textColor",
            "onSelectedListener"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Ldd/b;->f:I

    .line 67
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 69
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 70
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 71
    iput p2, p0, Ldd/b;->g:I

    .line 72
    iput-object p3, p0, Ldd/b;->d:Ldd/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "multiClickListener"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Ldd/b;->f:I

    .line 86
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 88
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 89
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Ldd/b;->e:Ldd/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "onSelectedListener"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Ldd/b;->f:I

    .line 50
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 52
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 53
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Ldd/b;->d:Ldd/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "childs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Ldd/b;->f:I

    .line 122
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 124
    sget-object v0, Ldd/b$b;->Folder:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 125
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Ldd/b;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tittle",
            "allowClick"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Ldd/b;->f:I

    .line 42
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 44
    sget-object v0, Ldd/b$b;->Item:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 45
    iput-object p1, p0, Ldd/b;->b:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Ldd/b;->j:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftElements",
            "rightElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Ljava/util/List<",
            "LM7/g;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Ldd/b;->f:I

    .line 34
    iput v0, p0, Ldd/b;->g:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Ldd/b;->j:Z

    .line 36
    sget-object v0, Ldd/b$b;->ButtonElements:Ldd/b$b;

    iput-object v0, p0, Ldd/b;->a:Ldd/b$b;

    .line 37
    iput-object p1, p0, Ldd/b;->l:Ljava/util/List;

    .line 38
    iput-object p2, p0, Ldd/b;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Ldd/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    iget-object v0, p0, Ldd/b;->o:Landroid/view/MenuItem;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ldd/b;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/b;

    invoke-virtual {v1, p1}, Ldd/b;->a(Landroid/view/MenuItem;)Ldd/b;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ldd/b$a;
    .locals 1

    iget-object v0, p0, Ldd/b;->k:Ldd/b$a;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "others"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Ldd/b;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd/b;

    move v3, v0

    :goto_1
    iget-object v4, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldd/b;

    iget-object v5, v2, Ldd/b;->a:Ldd/b$b;

    iget-object v6, v4, Ldd/b;->a:Ldd/b$b;

    if-ne v5, v6, :cond_0

    iget-object v5, v2, Ldd/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v6, v4, Ldd/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, v2, Ldd/b;->c:Ljava/util/List;

    invoke-virtual {v4, v2}, Ldd/b;->c(Ljava/util/List;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ldd/b;->c:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public d(Landroid/view/MenuItem;)Ldd/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iget-object v0, p0, Ldd/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/b;

    iget-object v2, v1, Ldd/b;->a:Ldd/b$b;

    sget-object v3, Ldd/b$b;->Folder:Ldd/b$b;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, p1}, Ldd/b;->d(Landroid/view/MenuItem;)Ldd/b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    iget-object v2, v1, Ldd/b;->o:Landroid/view/MenuItem;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ldd/b$a;)Ldd/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconDrawer"
        }
    .end annotation

    iput-object p1, p0, Ldd/b;->k:Ldd/b$a;

    return-object p0
.end method
