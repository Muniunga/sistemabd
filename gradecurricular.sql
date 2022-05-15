

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gradecurricular`
--

CREATE TABLE `gradecurricular` (
  `idGrade` int(11) NOT NULL,
  `nomeGrade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idAnoLetivo` int(11) NOT NULL,
  `idAnoC` int(11) NOT NULL,
  `IDSemestre` int(11) NOT NULL,
  `IdCurso` int(11) NOT NULL,
  `IdDisciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `gradecurricular`
--
ALTER TABLE `gradecurricular`
  ADD PRIMARY KEY (`idGrade`),
  ADD KEY `idAnoC` (`idAnoC`),
  ADD KEY `idAnoLetivo` (`idAnoLetivo`),
  ADD KEY `IdCurso` (`IdCurso`),
  ADD KEY `IdDisciplina` (`IdDisciplina`),
  ADD KEY `IDSemestre` (`IDSemestre`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gradecurricular`
--
ALTER TABLE `gradecurricular`
  MODIFY `idGrade` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `gradecurricular`
--
ALTER TABLE `gradecurricular`
  ADD CONSTRAINT `gradecurricular_ibfk_1` FOREIGN KEY (`idAnoC`) REFERENCES `anocurricular` (`idAnoC`),
  ADD CONSTRAINT `gradecurricular_ibfk_2` FOREIGN KEY (`idAnoLetivo`) REFERENCES `anoletivo` (`idAnoLectivo`),
  ADD CONSTRAINT `gradecurricular_ibfk_3` FOREIGN KEY (`IdCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `gradecurricular_ibfk_4` FOREIGN KEY (`IdDisciplina`) REFERENCES `disciplina` (`idDiscplina`),
  ADD CONSTRAINT `gradecurricular_ibfk_5` FOREIGN KEY (`IDSemestre`) REFERENCES `semestre` (`idSemestre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
