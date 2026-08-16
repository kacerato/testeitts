.class public Ln8/b;
.super Ln8/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;[Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "compiled",
            "code",
            "lines",
            "javaMetaInfo"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_2

    aget-object v0, p3, p2

    const-string v1, "import java.net.Socket;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.net.Socket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lt8/g;

    invoke-direct {v0}, Lt8/g;-><init>()V

    iput p2, v0, Ld8/e;->c:I

    const-string v1, "Very important information about sockets."

    iput-object v1, v0, Ld8/e;->b:Ljava/lang/String;

    const-string v1, "Sockets block the current thread from running, this will freeze ITsMagic completely.\nRemember to start the socket on an AsyncTask;\n\nnew AsyncTask(new AsyncRunnable() {\n        public Object onBackground(Object input) {\n            Socket socket = new Socket( OPTIONS );\n            return null;\n        }\n\n        public void onEngine(Object result) { RUN WHEN SOCKET IS CLOSED }\n}"

    iput-object v1, v0, Ld8/e;->a:Ljava/lang/String;

    iget-object v1, p4, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method
