Vim�UnDo� Ga`�f�*F�*>��<�~2�`j��S\3aؿ'   �   H        return static_cast<usize>(write(m_Pid, str.data(), str.size()));   k   -      )       )   )   )    f�j   
 _�                    �        ����                                                                                                                                                                                                                                                                                                                                                             f     �   �   �   �      	�   �   �   �    5��    �                      �                     �    �                     �                     �    �                    �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             f     �   �   �   �      		if5��    �                     �                     �    �                    �                    �    �                    �                    �    �                 
   �             
       �    �                    �                    �    �   +                 �                     �    �                     �                     5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                                                             f     �   �   �   �      	        }5��    �   	                                      �    �                                          5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             f��     �   �   �   �       5��    �                                           �    �                                           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             f��     �   �   �   �       �   �   �   �    5��    �                                           �    �                                           �    �                                         �    �                                          �    �                    5                    �    �   *                 A                     �    �                     D                     5�_�                    �   	    ����                                                                                                                                                                                                                                                                                                                                                             f��    �   �   �   �      	        }5��    �   	                 V                     �    �                     Y                     5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                                                             f�     �   �   �   �    �   �   �          		 �   �   �           �   �   �   �    �   �   �           �   �   �   �    5��    �                                           �    �                                         �    �                      �                     �    �                     �                    �    �                     �                    �    �                                         5�_�      
           	   �       ����                                                                                                                                                                                                                                                                                                                                                             f�     �   �   �          		 �   �   �          		 5��    �                                         �    �                     �                    5�_�   	              
   �       ����                                                                                                                                                                                                                                                                                                                                                             f�     �   �   �          		�   �   �          		5��    �                      �                     �    �                                           5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                    v        f�     �   �   �   �      	�   �   �   �    5��    �                      �                     �    �                      �                     �    �                     �                     �    �                      �                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                    v        f�     �   �   �   �       5��    �                      �                     �    �                     �                    �    �                    �                    �    �                    �                     �    �                  	   �              	       �    �   
              
   �             
       �    �                    �                     �    �                  	   �              	       �    �   	                 �                    �    �   	                 �                    �    �                                        �    �   %                                      �    �                                          �    �                                        �    �                    3                    �    �   %                 ?                     �    �                      @                     �    �                     @                     �    �                     C                     �    �                 ?   C             ?       5�_�                    �   8    ����                                                                                                                                                                                                                                                                                                                                                    v        f�C     �   �   �   �      A		const auto max_fd = std::max(m_StdoutPipe[0], m_StdoutPipe[0]);5��    �   5                 v                    5�_�                    �   7    ����                                                                                                                                                                                                                                                                                                                                                    v        f�G    �   �   �   �      		�   �   �   �    5��    �                      �                     �    �                      �                     �    �                     �                     �    �                  /   �              /       �    �   /                 �                    �    �   /                 �                    �    �   1              
   �             
       5�_�                    �   
    ����                                                                                                                                                                                                                                                                                                                                                    v        f�]    �   �   �   �      		FD_ZERO(read_fds);5��    �   
                  �                     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f�g     �   �   �          	        }5��    �                      �      
               5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f�l    �   �   �   �      		�   �   �   �    5��    �                                           �    �                                          5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f�     �   �   �   �      L        auto bytes_read = read(m_StdoutPipe[0], buffer, sizeof(buffer) - 1);5��    �                                          �    �                                         5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �              // Read from stdout.5��    �                     �                     �    �                     �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �              if (bytes_read > 0)5��    �                     Z                     �    �                     R                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      	        {5��    �                     q                     �    �                     i                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      #            buffer[bytes_read] = 0;5��    �                     z                     �    �                     n                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      !            if (m_StdoutCallback)5��    �                     �                     �    �                     �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      5                m_StdoutCallback(buffer, bytes_read);5��    �                     �                     �    �                     �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      		}5��    �                     �                     �    �                    �                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �              // Read from stderr.5��    �                                          �    �                                         5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      G        bytes_read = read(m_StderrPipe[0], buffer, sizeof(buffer) - 1);5��    �                     (                     �    �                                          5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �              if (bytes_read > 0)5��    �                     k                     �    �                     c                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      	        {5��    �                     �                     �    �                     z                    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      #            buffer[bytes_read] = 0;5��    �                     �                     �    �                                         5�_�                     �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      !            if (m_StderrCallback)5��    �                     �                     �    �                     �                    5�_�      !               �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      5                m_StderrCallback(buffer, bytes_read);5��    �                     �                     �    �                     �                    5�_�       "           !   �       ����                                                                                                                                                                                                                                                                                                                                                    v        f     �   �   �   �      	        }5��    �                     �                     �    �                     �                    5�_�   !   #           "   �       ����                                                                                                                                                                                                                                                                                                                                                    v        f    �   �   �   �      		�   �   �   �    5��    �                      �                     �    �                     �                     5�_�   "   $           #   �       ����                                                                                                                                                                                                                                                                                                                                                    v        f    �   �   �          		}5��    �                      �                     5�_�   #   %           $   �   *    ����                                                                                                                                                                                                                                                                                                                                                    v        f��    �   �   �   �      *		if (FD_ISSET(m_StderrPipe[0], &read_fds)5��    �   *                                       5�_�   $   (           %   �       ����                                                                                                                                                                                                                                                                                                                                                    v        f��    �   �   �   �      B			bytes_read = read(m_StderrPipe[0], buffer, sizeof(buffer) - 1);5��    �                     $                     5�_�   %   )   &       (   k   -    ����                                                                                                                                                                                                                                                                                                                                                    v   "    f�d     �   j   l   �      H        return static_cast<usize>(write(m_Pid, str.data(), str.size()));5��    j   *              	   6             	       �    j   1                 =                    5�_�   (               )   k   0    ����                                                                                                                                                                                                                                                                                                                                                    v   "    f�i   
 �   j   l   �      R        return static_cast<usize>(write(m_StdoutPipe[1], str.data(), str.size()));5��    j   -                 9                    5�_�   %   '       (   &   k   -    ����                                                                                                                                                                                                                                                                                                                                                    v        f�+   	 �   j   l   �      Q        return static_cast<usize>(write(m_StdinPipe[1], str.data(), str.size()));5��    j   ,                  8                     �    j   +                  7                     �    j   *                 6                    �    j   -              	   9             	       5�_�   &               '   >   .    ����                                                                                                                                                                                                                                                                                                                                                    v   "    f�`     �       �       �   #include "RemoteShell.h"       .RemoteShell::RemoteShell() noexcept = default;       6RemoteShell::RemoteShell(RemoteShell&& other) noexcept   9    : m_StdoutCallback(std::move(other.m_StdoutCallback))   9    , m_StderrCallback(std::move(other.m_StderrCallback))   )    , m_Thread(std::move(other.m_Thread))   #    , m_Pid(std::move(other.m_Pid))   /    , m_StdinPipe(std::move(other.m_StdinPipe))   1    , m_StdoutPipe(std::move(other.m_StdoutPipe))   1    , m_StderrPipe(std::move(other.m_StderrPipe))   '    , m_Running(other.m_Running.load())   {   }       ARemoteShell& RemoteShell::operator=(RemoteShell&& other) noexcept   {   0    RemoteShell{ std::move(other) }.Swap(*this);       return *this;   }       $RemoteShell::~RemoteShell() noexcept   {       if (m_Pid >= 0)       {           // Kill the shell.           kill(m_Pid, SIGTERM);       +        // Wait for the shell to terminate.           i32 status;   #        waitpid(m_Pid, &status, 0);           // WIFEXITED(status);       }           m_Running.store(false);           if (m_Thread.joinable())           m_Thread.join();           close(m_StdinPipe[1]);       close(m_StdoutPipe[0]);       close(m_StderrPipe[0]);   }       "auto RemoteShell::Launch() -> void   {       // Create our pipes.       pipe(m_StdinPipe.data());       pipe(m_StdoutPipe.data());       pipe(m_StderrPipe.data());           m_Pid = fork();       switch (m_Pid)       {   _        case -1: perror("fork"); throw std::runtime_error("Failed to create a child process.");   ;        case 0: {                                 // Child.   W            dup2(m_StdinPipe[0], STDIN_FILENO);   // Redirect stdin to our pipe's read.   Y            dup2(m_StdoutPipe[1], STDOUT_FILENO); // Redirect stdout to our pipe's write.   Y            dup2(m_StderrPipe[1], STDERR_FILENO); // Redirect stderr to our pipe's write.       6            // The child is going to do the following:   *            // 1. Read from m_StdinPipe[0]   *            // 2. Write to m_StdoutPipe[1]   *            // 3. Write to m_StderrPipe[1]   =            // Therefore close unnecessary ends of our pipes.   J            close(m_StdinPipe[1]);  // Close the write end of m_StdinPipe.   J            close(m_StdoutPipe[0]); // Close the read end of m_StdoutPipe.   J            close(m_StderrPipe[0]); // Close the read end of m_StderrPipe.       <            // Execute the shell (assuming bash is present).   ;            execl("/usr/bin/vim", "/usr/bin/vim", nullptr);       !            // Should not happen.   @            throw std::runtime_error("Failed to execute bash.");   	        }           default: { // Parent.   7            // The parent is going to do the following:   *            // 1. Write to m_StdinPipe[1].   ,            // 2. Read from m_StdoutPipe[0].   ,            // 3. Read from m_StderrPipe[0].   =            // Therefore close unnecessary ends of our pipes.   I            close(m_StdinPipe[0]);  // Close the read end of m_StdinPipe.   K            close(m_StdoutPipe[1]); // Close the write end of m_StdoutPipe.   K            close(m_StderrPipe[1]); // Close the write end of m_StderrPipe.       G            // Make the read end of the pipes non-blocking for polling.   ;            // fcntl(m_StdoutPipe[0], F_SETFL, O_NONBLOCK);   ;            // fcntl(m_StderrPipe[0], F_SETFL, O_NONBLOCK);       ;            // Set non-blocking read for stdout and stderr?   2            // I think I am fine with blocking IO?   ;            // fcntl(m_StdoutPipe[0], F_SETFL, O_NONBLOCK);   ;            // fcntl(m_StderrPipe[0], F_SETFL, O_NONBLOCK);                   m_Running = true;       J            m_Thread = std::thread{ [this]() { this->PollFromPipes(); } };               break;   	        }       }   }       Tauto RemoteShell::Write(const std::string_view str) noexcept -> std::optional<usize>   {       if (m_Pid >= 0)   Q        return static_cast<usize>(write(m_StdinPipe[1], str.data(), str.size()));       else           return std::nullopt;   }       Fauto RemoteShell::Write(const i32 ch) noexcept -> std::optional<usize>   {       if (m_Pid >= 0)   A        return static_cast<usize>(write(m_Pid, &ch, sizeof(ch)));       else           return std::nullopt;   }       (auto RemoteShell::Wait() noexcept -> i32   {       if (m_Pid >= 0)       {   +        // Wait for the shell to terminate.           i32 status;   #        waitpid(m_Pid, &status, 0);           // WIFEXITED(status);           return status;       }       return -1;   }       `auto RemoteShell::SetStdoutCallback(std::function<RemoteShell::BufferCallback> callback) -> void   {   +    m_StdoutCallback = std::move(callback);   }       `auto RemoteShell::SetStderrCallback(std::function<RemoteShell::BufferCallback> callback) -> void   {   +    m_StderrCallback = std::move(callback);   }       )auto RemoteShell::PollFromPipes() -> void   {       char buffer[1024];   "    while (this->m_Running.load())       {   		fd_set read_fds;   		FD_ZERO(&read_fds);   %		FD_SET(m_StdoutPipe[0], &read_fds);   %		FD_SET(m_StderrPipe[0], &read_fds);       A		const auto max_fd = std::max(m_StdoutPipe[0], m_StderrPipe[0]);       ;		select(max_fd + 1, &read_fds, nullptr, nullptr, nullptr);       +		if (FD_ISSET(m_StdoutPipe[0], &read_fds))   		{   			// Read from stdout.   G			auto bytes_read = read(m_StdoutPipe[0], buffer, sizeof(buffer) - 1);   			if (bytes_read > 0)   			{   				buffer[bytes_read] = 0;   				if (m_StdoutCallback)   *					m_StdoutCallback(buffer, bytes_read);   			}   		}       +		if (FD_ISSET(m_StderrPipe[0], &read_fds))   		{   			// Read from stderr.   G			auto bytes_read = read(m_StderrPipe[0], buffer, sizeof(buffer) - 1);   			if (bytes_read > 0)   			{   				buffer[bytes_read] = 0;   				if (m_StderrCallback)   *					m_StderrCallback(buffer, bytes_read);   			}   		}       }   }5�5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             f     �   �   �        5��    �                      �      M               5��