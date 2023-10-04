<%-- 
    Document   : index
    Created on : 4 oct. 2023, 10:41:28 a. m.
    Author     : Leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- TailwindCSS CDN -->    
        <script src="https://cdn.tailwindcss.com"></script>
        
        <title>Formulario</title>
    </head>
    <body class="text-gray-200 bg-[url('background.jpg')] py-16">
        <!-- <h1 class="text-3xl text-center pt-16 pb-24">Página de ingreso al sistema</h1> -->
        
        
        <form 
            method="POST" 
            action="signin" 
            class="py-12 px-8 bg-zinc-800 flex w-4/5 max-w-4xl mx-auto my-4 flex-col items-center rounded gap-8 bg-opacity-90"
        >
            <div class="w-full items-center">
               <label 
                   for="user"
               >
                   Usuario:
               </label>
                <input
                    placeholder="Ingresar usuario..."
                    type="text" 
                    name="user" 
                    class="w-full mt-4 px-2 rounded bg-neutral-900 outline-none focus:bg-gray-200 focus:text-neutral-900 focus:font-semibold py-3 px-6 rounded"
                > 
            </div>
            <div class="w-full items-center">
               <label 
                   for="user"
               >
                   Contraseña:
               </label>
                <input
                    placeholder="Ingresar contraseña..."
                    type="password" 
                    name="password" 
                    class="w-full mt-4 px-2 rounded bg-neutral-900 outline-none focus:bg-gray-200 focus:text-neutral-900 focus:font-semibold py-3 px-6 rounded"
                > 
            </div>
            
            <button 
                type="submit"
                class="transition bg-gradient-to-tr from-indigo-800 to-blue-800 font-bold  py-2 px-6 rounded hover:bg-none hover:ring hover:ring-indigo-800 hover:text-gray-200"
             >
                Ingresar al Sistema
            </button>
            
            <% 
                Object error = request.getSession().getAttribute("error");
                Object success = request.getSession().getAttribute("success");
                
                if (error instanceof String) {
            %>
            <p class="bg-red-800 py-1 px-3 rounded text-sm"><%= error %></p>
            <%
                } else if (success instanceof String) {
            %>
            <p class="bg-green-800 py-1 px-3 rounded text-sm"><%= success %></p>
            <%
                }
                request.getSession().invalidate();
            %>
        </form>
    </body>
</html>
