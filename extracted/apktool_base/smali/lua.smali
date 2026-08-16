.class public Llua;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static encoding:Ljava/lang/String; = null

.field private static globals:Lorg/luaj/vm2/Globals; = null

.field private static print:Z = false

.field private static final usage:Ljava/lang/String; = "usage: java -cp luaj-jse.jar lua [options] [script [args]].\nAvailable options are:\n  -e stat  execute string \'stat\'\n  -l name  require library \'name\'\n  -i       enter interactive mode after executing \'script\'\n  -v       show version information\n  -b      \tuse luajc bytecode-to-bytecode compiler (requires bcel on class path)\n  -n      \tnodebug - do not load debug library by default\n  -p      \tprint the prototype\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n  -        execute stdin and stop handling options"

.field private static final version:Ljava/lang/String; = "Luaj-jse 3.0.1 Copyright (c) 2012 Luaj.org.org"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static interactiveMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "=stdin"

    invoke-static {v2, v4, v1, v3}, Llua;->processScript(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :try_start_0
    sget-object v1, Llua;->globals:Lorg/luaj/vm2/Globals;

    const-string v2, "require"

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/luaj/vm2/LuaValue;

    sget-object v3, Llua;->globals:Lorg/luaj/vm2/Globals;

    invoke-virtual {v2, v0, v3}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "loadLibrary("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ") failed: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    move v4, v1

    move v6, v4

    move v7, v6

    move v8, v7

    move v5, v2

    :goto_1
    :try_start_0
    array-length v9, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x63

    const/16 v11, 0x6c

    const/16 v12, 0x65

    const/16 v13, 0x2d

    const-string v14, "-"

    if-ge v4, v9, :cond_11

    if-eqz v5, :cond_11

    :try_start_1
    aget-object v9, p0, v4

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_5

    :cond_1
    aget-object v9, p0, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    aget-object v9, p0, v4

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_e

    if-eq v9, v12, :cond_d

    const/16 v12, 0x69

    if-eq v9, v12, :cond_c

    if-eq v9, v11, :cond_9

    const/16 v11, 0x6e

    if-eq v9, v11, :cond_8

    const/16 v11, 0x70

    if-eq v9, v11, :cond_7

    const/16 v11, 0x76

    if-eq v9, v11, :cond_6

    const/16 v11, 0x62

    if-eq v9, v11, :cond_5

    if-eq v9, v10, :cond_3

    :goto_2
    invoke-static {}, Llua;->usageExit()V

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v4, v4, 0x1

    array-length v9, p0

    if-lt v4, v9, :cond_4

    invoke-static {}, Llua;->usageExit()V

    :cond_4
    aget-object v9, p0, v4

    sput-object v9, Llua;->encoding:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move v8, v2

    goto :goto_4

    :cond_6
    move v6, v2

    goto :goto_4

    :cond_7
    sput-boolean v2, Llua;->print:Z

    goto :goto_4

    :cond_8
    move v7, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    array-length v9, p0

    if-lt v4, v9, :cond_a

    invoke-static {}, Llua;->usageExit()V

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    :goto_3
    aget-object v9, p0, v4

    invoke-virtual {v3, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    array-length v9, p0

    if-lt v4, v9, :cond_10

    goto :goto_2

    :cond_e
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x2

    if-le v5, v9, :cond_f

    invoke-static {}, Llua;->usageExit()V

    :cond_f
    move v5, v1

    :cond_10
    :goto_4
    add-int/2addr v4, v2

    goto/16 :goto_1

    :cond_11
    :goto_5
    if-eqz v6, :cond_12

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Luaj-jse 3.0.1 Copyright (c) 2012 Luaj.org.org"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    if-eqz v7, :cond_13

    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v4

    goto :goto_6

    :cond_13
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->debugGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v4

    :goto_6
    sput-object v4, Llua;->globals:Lorg/luaj/vm2/Globals;

    if-eqz v8, :cond_14

    invoke-static {v4}, Lorg/luaj/vm2/luajc/LuaJC;->install(Lorg/luaj/vm2/Globals;)V

    :cond_14
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    goto :goto_7

    :cond_15
    move v4, v1

    :goto_7
    move v5, v1

    :goto_8
    if-ge v5, v4, :cond_16

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Llua;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_16
    move v3, v1

    move v4, v2

    :goto_9
    array-length v5, p0

    if-ge v3, v5, :cond_1d

    if-eqz v4, :cond_1c

    aget-object v5, p0, v3

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_c

    :cond_17
    aget-object v5, p0, v3

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v2, "=stdin"

    :goto_a
    invoke-static {v1, v2, p0, v3}, Llua;->processScript(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_d

    :cond_18
    aget-object v5, p0, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v13, :cond_1b

    if-eq v5, v10, :cond_1a

    if-eq v5, v12, :cond_19

    if-eq v5, v11, :cond_1a

    goto :goto_b

    :cond_19
    add-int/lit8 v3, v3, 0x1

    new-instance v5, Ljava/io/ByteArrayInputStream;

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v6, "string"

    invoke-static {v5, v6, p0, v3}, Llua;->processScript(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_b

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    move v4, v1

    :goto_b
    add-int/2addr v3, v2

    goto :goto_9

    :cond_1c
    :goto_c
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v3

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v3

    goto :goto_a

    :cond_1d
    :goto_d
    if-eqz v0, :cond_1e

    invoke-static {}, Llua;->interactiveMode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_f

    :goto_e
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, -0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_1e
    :goto_f
    return-void
.end method

.method private static processScript(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p0, Llua;->encoding:Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object p0, Llua;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Llua;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lorg/luaj/vm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object p0, Llua;->globals:Lorg/luaj/vm2/Globals;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1, p0}, Lorg/luaj/vm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget-boolean v0, Llua;->print:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-static {v0}, Lorg/luaj/vm2/Print;->print(Lorg/luaj/vm2/Prototype;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    sget-object v0, Llua;->globals:Lorg/luaj/vm2/Globals;

    invoke-static {p1, p2, p3, v0}, Llua;->setGlobalArg(Ljava/lang/String;[Ljava/lang/String;ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_4
    return-void
.end method

.method private static setGlobalArg(Ljava/lang/String;[Ljava/lang/String;ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 5

    if-nez p1, :cond_0

    sget-object p0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object p0

    :cond_0
    invoke-static {}, Lorg/luaj/vm2/LuaValue;->tableOf()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    sub-int v3, v2, p2

    aget-object v4, p1, v2

    invoke-static {v4}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const-string p0, "luaj"

    invoke-static {p0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v0, p1, p0}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const-string p0, "arg"

    invoke-virtual {p3, p0, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaTable;->unpack()Lorg/luaj/vm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method private static usageExit()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java -cp luaj-jse.jar lua [options] [script [args]].\nAvailable options are:\n  -e stat  execute string \'stat\'\n  -l name  require library \'name\'\n  -i       enter interactive mode after executing \'script\'\n  -v       show version information\n  -b      \tuse luajc bytecode-to-bytecode compiler (requires bcel on class path)\n  -n      \tnodebug - do not load debug library by default\n  -p      \tprint the prototype\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n  -        execute stdin and stop handling options"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
