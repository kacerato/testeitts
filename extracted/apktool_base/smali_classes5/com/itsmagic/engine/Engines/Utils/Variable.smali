.class public Lcom/itsmagic/engine/Engines/Utils/Variable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Utils/Variable$a;
    }
.end annotation


# instance fields
.field public b:Z

.field public booolean_value:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient c:Landroid/view/View;

.field public color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public double_value:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public editableInNSE:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public farray_value:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public float_value:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public genericStorePackage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inspectorClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public int_value:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public list_value:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation
.end field

.field public long_value:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public str_value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "double_value"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 21
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->double_value:D

    .line 23
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Double:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 24
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 25
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "float_value"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 30
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    .line 32
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 33
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 34
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 35
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "float_value",
            "isFromJava"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 39
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    .line 41
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 42
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 43
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 44
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "int_value"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 48
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    .line 50
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 51
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 52
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 53
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "int_value",
            "type"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    .line 57
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 60
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "int_value",
            "isFromJava"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 64
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    .line 66
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 67
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 68
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 69
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "long_value"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 12
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->long_value:J

    .line 14
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Long:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 16
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "view_value"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 159
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->c:Landroid/view/View;

    .line 161
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->View:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 162
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 163
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 164
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "color_value"
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 149
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 150
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 152
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Color:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 153
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 154
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 155
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "vector2_value"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 98
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 100
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector2:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 101
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 102
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 103
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "vector3_value"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 107
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 109
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector3:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 110
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 111
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 112
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "vector3_value",
            "isFromJava"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 116
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 118
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector3:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 119
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 120
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 121
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "type"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 7
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 8
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "booolean_value"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 134
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    .line 136
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 137
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 138
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "booolean_value",
            "isFromJava"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 142
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    .line 144
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 145
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 146
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "str_value"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 73
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    .line 75
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 76
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 77
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 78
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "str_value",
            "type"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 85
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "str_value",
            "isFromJava"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 89
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    .line 91
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 92
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 93
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 94
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "list_value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 125
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    .line 127
    sget-object p1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->List:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    .line 128
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    .line 129
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    .line 130
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newName"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;->a()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->double_value:D

    iput-wide v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->double_value:D

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->long_value:J

    iput-wide v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->long_value:J

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->b:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->editableInNSE:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->genericStorePackage:Ljava/lang/String;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->genericStorePackage:Ljava/lang/String;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->List:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    if-nez v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :cond_6
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector2:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector2_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    if-nez v0, :cond_7

    move v2, v3

    :cond_7
    return v2

    :cond_8
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Vector3:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->vector3_value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v0, :cond_9

    move v2, v3

    :cond_9
    return v2

    :cond_a
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v0, :cond_b

    move v2, v3

    :cond_b
    return v2

    :cond_c
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Color:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_d

    move v2, v3

    :cond_d
    return v2

    :cond_e
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Time:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->ITsMagic:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_10

    return v2

    :cond_10
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->WorldController:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_11

    return v2

    :cond_11
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Directories:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_12

    return v2

    :cond_12
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->GameController:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_13

    return v2

    :cond_13
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Console:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_14

    return v2

    :cond_14
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Input:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_15

    return v2

    :cond_15
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Math:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_16

    return v2

    :cond_16
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Random:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_17

    return v2

    :cond_17
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->New:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_18

    return v2

    :cond_18
    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->SaveGame:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    return v2
.end method

.method public f(Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->File:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
